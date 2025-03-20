package com.freshservice.backend.ticket.dto;

import com.freshservice.backend.ticket.dto.TicketDTO;
import com.freshservice.backend.ticket.entity.Ticket;
import org.mapstruct.*;
import org.mapstruct.factory.Mappers;
import org.springframework.context.annotation.Bean;

@Mapper(componentModel = "spring")
public interface TicketMapper {

    TicketMapper INSTANCE = Mappers.getMapper(TicketMapper.class);

    @Mapping(source = "demandeur.id", target = "demandeurId")
    @Mapping(source = "assigneA.id", target = "assigneAId")
    @Mapping(source = "groupe.id", target = "groupeId")
    TicketDTO toDTO(Ticket ticket);

    @Mapping(source = "demandeurId", target = "demandeur.id")
    @Mapping(source = "assigneAId", target = "assigneA.id")
    @Mapping(source = "groupeId", target = "groupe.id")
    Ticket toEntity(TicketDTO ticketDTO);
}
